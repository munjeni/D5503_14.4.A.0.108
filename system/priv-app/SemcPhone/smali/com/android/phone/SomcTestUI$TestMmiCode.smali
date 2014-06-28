.class Lcom/android/phone/SomcTestUI$TestMmiCode;
.super Ljava/lang/Object;
.source "SomcTestUI.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcTestUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TestMmiCode"
.end annotation


# instance fields
.field mIsCancelable:Z

.field mIsNetworkInit:Z

.field mIsUssdReq:Z

.field mMessage:Ljava/lang/CharSequence;

.field mState:Lcom/android/internal/telephony/MmiCode$State;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/phone/SomcTestUI$TestMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 572
    const-string v0, "This is a test for Mmi dialog."

    iput-object v0, p0, Lcom/android/phone/SomcTestUI$TestMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 574
    iput-boolean v1, p0, Lcom/android/phone/SomcTestUI$TestMmiCode;->mIsUssdReq:Z

    .line 576
    iput-boolean v1, p0, Lcom/android/phone/SomcTestUI$TestMmiCode;->mIsNetworkInit:Z

    .line 578
    iput-boolean v1, p0, Lcom/android/phone/SomcTestUI$TestMmiCode;->mIsCancelable:Z

    .line 583
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 598
    return-void
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$TestMmiCode;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 594
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/phone/SomcTestUI$TestMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI$TestMmiCode;->mIsCancelable:Z

    return v0
.end method

.method public isNetworkInitiated()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI$TestMmiCode;->mIsNetworkInit:Z

    return v0
.end method

.method public isUssdRequest()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI$TestMmiCode;->mIsUssdReq:Z

    return v0
.end method
