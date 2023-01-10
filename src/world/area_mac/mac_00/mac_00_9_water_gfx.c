#include "mac_00.h"
#include "model.h"

MAP_RODATA_PAD(1,unk)

void N(gfx_build_water)(void) {
    Model* model;

    gDPSetDepthSource(gMasterGfxPos++, G_ZS_PRIM);
    gDPSetPrimDepth(gMasterGfxPos++, 0x7FF0, 0);
    gDPSetRenderMode(gMasterGfxPos++, Z_CMP | CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL | G_RM_PASS,
            Z_CMP | CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL | GBL_c2(G_BL_CLR_IN, G_BL_0, G_BL_CLR_IN, G_BL_1));
    gDPSetCombineLERP(gMasterGfxPos++, 0, 0, 0, PRIMITIVE, 0, 0, 0, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, 0);
    gDPSetPrimColor(gMasterGfxPos++, 0, 0, 0, 0, 128, 0);
    gDPPipeSync(gMasterGfxPos++);

    model = get_model_from_list_index(get_model_list_index_from_tree_index(MODEL_water));

    gSPDisplayList(gMasterGfxPos++, model->modelNode->displayData->displayList);
    gDPPipeSync(gMasterGfxPos++);
    gDPSetCycleType(gMasterGfxPos++, G_CYC_2CYCLE);
    gDPSetDepthSource(gMasterGfxPos++, G_ZS_PIXEL);
    gDPSetRenderMode(gMasterGfxPos++, G_RM_PASS, G_RM_AA_ZB_XLU_SURF2);

    mdl_draw_hidden_panel_surface(&gMasterGfxPos, MODEL_water);
}

EvtScript N(EVS_SetupWaterCustomGfx) = {
    EVT_WAIT(1)
    EVT_CALL(SetCustomGfxBuilders, CUSTOM_GFX_0, EVT_PTR(N(gfx_build_water)), 0)
    EVT_CALL(SetModelCustomGfx, MODEL_water, CUSTOM_GFX_0, -1)
    EVT_RETURN
    EVT_END
};