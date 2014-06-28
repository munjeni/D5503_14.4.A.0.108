.class final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State$1;
.super Ljava/lang/Object;
.source "StaminaMode.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State$1;->findValueByNumber(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 53
    invoke-static {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;->valueOf(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;

    move-result-object v0

    return-object v0
.end method
