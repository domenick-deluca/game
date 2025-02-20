#include "cbase.h"

#include "filesystem.h"
#include "server_events.h"
#include "tickset.h"
#include "icommandline.h"
#include "util/mom_util.h"

#include "tier0/memdbgon.h"

CMomServerEvents::CMomServerEvents(): CAutoGameSystem("CMomServerEvents")
{
}

inline void UnloadConVarOrCommand(const char *pName)
{
    const auto pCmd = g_pCVar->FindCommandBase(pName);
    if (pCmd)
        g_pCVar->UnregisterConCommand(pCmd);
}

bool CMomServerEvents::Init()
{
    MomUtil::MountGameFiles();

    if (!CommandLine()->FindParm("-mapping"))
    {
        // Check plugins
        FileFindHandle_t handle;
        const auto pFound = g_pFullFileSystem->FindFirstEx("addons/*.vdf", "GAME", &handle);
        if (pFound)
        {
            char foundFile[MAX_PATH];
            Q_snprintf(foundFile, MAX_PATH, "addons/%s", pFound);

            char fullPath[MAX_PATH];
            g_pFullFileSystem->RelativePathToFullPath_safe(foundFile, "GAME", fullPath);

            Error("Boot the game with -mapping to be able to use plugins!\n"
                "A common fix to this is to rename your \"addons\" folder in your TF2/CSS folders.\n"
                "Full path to bad folder: %s", fullPath);
        }

        g_pFullFileSystem->FindClose(handle);

        UnloadConVarOrCommand("plugin_load");
        UnloadConVarOrCommand("host_limitlocal");
        UnloadConVarOrCommand("net_fakelag");
        UnloadConVarOrCommand("net_fakeloss");
        UnloadConVarOrCommand("net_droppackets");
        UnloadConVarOrCommand("net_fakejitter");
        UnloadConVarOrCommand("net_blockmsg");
        UnloadConVarOrCommand("singlestep");
        UnloadConVarOrCommand("host_sleep");
        UnloadConVarOrCommand("map_edit");
        UnloadConVarOrCommand("map_commentary");
        UnloadConVarOrCommand("sv_pausable");

        // Unregister FCVAR_MAPPING convars
        auto pCvar = g_pCVar->GetCommands();
        while (pCvar)
        {
            const auto pNext = pCvar->GetNext();

            if (pCvar->IsFlagSet(FCVAR_MAPPING))
                g_pCVar->UnregisterConCommand(pCvar);

            pCvar = pNext;
        }
    }

    return true;
}

void CMomServerEvents::PostInit()
{
    TickSet::TickInit();
}

void CMomServerEvents::LevelShutdownPostEntity()
{
    ConVarRef fullbright("mat_fullbright");
    // Shut off fullbright if the map enabled it
    if (fullbright.IsValid() && fullbright.GetBool())
        fullbright.SetValue(0);
}

void CMomServerEvents::OnGameOverlay(GameOverlayActivated_t* pParam)
{
    engine->ServerCommand("unpause\n");
}

CMomServerEvents g_MOMServerEvents;