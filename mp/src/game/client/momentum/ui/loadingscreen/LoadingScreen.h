#pragma once

#include "vgui_controls/EditablePanel.h"
#include "GameEventListener.h"
#include "TipManager.h"

namespace vgui
{
    class ContinuousProgressBar;
    class ImagePanel;
    class URLImage;
}

class CLoadingScreen : public vgui::EditablePanel, public CGameEventListener
{
public:
    DECLARE_CLASS_SIMPLE(CLoadingScreen, vgui::EditablePanel);

    CLoadingScreen();

    void FireGameEvent(IGameEvent *event) override;

    void LoadMapData(const char *pMapName);

protected:
    MESSAGE_FUNC(OnActivate, "Activate");
    MESSAGE_FUNC_INT(OnDeactivate, "Deactivate", loaded_into_game);
    MESSAGE_FUNC_FLOAT(OnLoadProgress, "ProgressFraction", percent);
    MESSAGE_FUNC(OnLargeImageLoad, "ImageLoad");

    void OnKeyCodeTyped(vgui::KeyCode code) override;

    CPanelAnimationVar(float, m_fMapImageOpacityMax, "MapImageOpacityMax", "0.5");

private:
    void SetTipPanelText(const char *pMapName);

    void CleanupMapImage();

    CTipManager m_TipManager;

    vgui::Label *m_pLoadingPercentLabel;
    vgui::Label *m_pTipLabel;
    vgui::Label *m_pMapNameLabel;
    vgui::Label *m_pAuthorsLabel;
    vgui::Label *m_pDifficultyLayoutLabel;
    vgui::Label *m_pTrackZonesLabel;

    vgui::ContinuousProgressBar *m_pProgressBar;

    vgui::ImagePanel *m_pMapImagePanel;
    vgui::URLImage *m_pMapImage, *m_pMapImageStreaming;
};