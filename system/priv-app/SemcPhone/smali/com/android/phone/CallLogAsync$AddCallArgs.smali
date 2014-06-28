.class public Lcom/android/phone/CallLogAsync$AddCallArgs;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallArgs"
.end annotation


# instance fields
.field public final callType:I

.field public final ci:Lcom/android/internal/telephony/CallerInfo;

.field public final context:Landroid/content/Context;

.field public final durationInSec:I

.field public final number:Ljava/lang/String;

.field public final presentation:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "presentation"    # I
    .param p5, "callType"    # I
    .param p6, "timestamp"    # J
    .param p8, "durationInMillis"    # J

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 106
    iput-object p3, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 107
    iput p4, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->presentation:I

    .line 108
    iput p5, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->callType:I

    .line 109
    iput-wide p6, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->timestamp:J

    .line 110
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 111
    return-void
.end method
