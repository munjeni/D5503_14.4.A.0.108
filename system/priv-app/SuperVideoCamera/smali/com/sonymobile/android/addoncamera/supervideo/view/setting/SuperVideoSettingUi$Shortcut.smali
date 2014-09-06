.class final enum Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;
.super Ljava/lang/Enum;
.source "SuperVideoSettingUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Shortcut"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

.field public static final enum Control:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

.field public static final enum Menu:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

.field public static final enum Space:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

.field public static final enum Torch:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    const-string v1, "Space"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    .line 49
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    const-string v1, "Control"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Control:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    .line 50
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    const-string v1, "Torch"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Torch:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    .line 51
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    const-string v1, "Menu"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Menu:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Space:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Control:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Torch:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->Menu:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    return-object v0
.end method
