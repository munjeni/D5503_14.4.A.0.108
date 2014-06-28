.class final enum Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
.super Ljava/lang/Enum;
.source "SmilPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SmilPlayerAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum BACK:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum FORWARD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

.field public static final enum STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "NO_ACTIVE_ACTION"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 74
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "RELOAD"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 75
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 76
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 77
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "START"

    invoke-direct {v0, v1, v7}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 78
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "FORWARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->FORWARD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 79
    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    const-string v1, "BACK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->BACK:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    .line 72
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->NO_ACTIVE_ACTION:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->RELOAD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->STOP:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->PAUSE:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->START:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->FORWARD:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->BACK:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->$VALUES:[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;->$VALUES:[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerAction;

    return-object v0
.end method
