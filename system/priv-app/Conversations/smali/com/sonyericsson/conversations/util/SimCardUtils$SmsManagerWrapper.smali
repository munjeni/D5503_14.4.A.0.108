.class public Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;
.super Ljava/lang/Object;
.source "SimCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/SimCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SmsManagerWrapper"
.end annotation


# instance fields
.field private mSmsManager:Landroid/telephony/SmsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;->mSmsManager:Landroid/telephony/SmsManager;

    .line 330
    return-void
.end method


# virtual methods
.method public copyMessageToIcc([B[BI)Z
    .locals 1
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;->mSmsManager:Landroid/telephony/SmsManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v0

    return v0
.end method

.method public getSmsManager()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;->mSmsManager:Landroid/telephony/SmsManager;

    return-object v0
.end method
