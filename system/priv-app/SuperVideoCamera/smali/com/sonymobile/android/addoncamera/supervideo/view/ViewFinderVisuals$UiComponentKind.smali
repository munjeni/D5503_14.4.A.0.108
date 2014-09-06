.class public final enum Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;
.super Ljava/lang/Enum;
.source "ViewFinderVisuals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UiComponentKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

.field public static final enum OVERLAY_ALERT_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

.field public static final enum SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    const-string v1, "OVERLAY_ALERT_DIALOG"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->OVERLAY_ALERT_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    .line 103
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    const-string v1, "SETTING_DIALOG"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->OVERLAY_ALERT_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->SETTING_DIALOG:Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/view/ViewFinderVisuals$UiComponentKind;

    return-object v0
.end method
