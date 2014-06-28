.class public final enum Lcom/sonymobile/superstamina/Util$Setting;
.super Ljava/lang/Enum;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Setting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/superstamina/Util$Setting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/superstamina/Util$Setting;

.field public static final enum SHOW_DIALOG_IN_FUTURE:Lcom/sonymobile/superstamina/Util$Setting;

.field public static final enum SHOW_POWERSAVE_DIALOG_IN_FUTURE:Lcom/sonymobile/superstamina/Util$Setting;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/sonymobile/superstamina/Util$Setting;

    const-string v1, "SHOW_DIALOG_IN_FUTURE"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/superstamina/Util$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/Util$Setting;->SHOW_DIALOG_IN_FUTURE:Lcom/sonymobile/superstamina/Util$Setting;

    new-instance v0, Lcom/sonymobile/superstamina/Util$Setting;

    const-string v1, "SHOW_POWERSAVE_DIALOG_IN_FUTURE"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/superstamina/Util$Setting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/superstamina/Util$Setting;->SHOW_POWERSAVE_DIALOG_IN_FUTURE:Lcom/sonymobile/superstamina/Util$Setting;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/superstamina/Util$Setting;

    sget-object v1, Lcom/sonymobile/superstamina/Util$Setting;->SHOW_DIALOG_IN_FUTURE:Lcom/sonymobile/superstamina/Util$Setting;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/superstamina/Util$Setting;->SHOW_POWERSAVE_DIALOG_IN_FUTURE:Lcom/sonymobile/superstamina/Util$Setting;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/superstamina/Util$Setting;->$VALUES:[Lcom/sonymobile/superstamina/Util$Setting;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/superstamina/Util$Setting;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/sonymobile/superstamina/Util$Setting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/superstamina/Util$Setting;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/superstamina/Util$Setting;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sonymobile/superstamina/Util$Setting;->$VALUES:[Lcom/sonymobile/superstamina/Util$Setting;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/superstamina/Util$Setting;

    return-object v0
.end method
