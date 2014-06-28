.class Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcInCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncLoadCookie"
.end annotation


# instance fields
.field public final call:Lcom/android/internal/telephony/Call;

.field public final callerInfo:Lcom/android/internal/telephony/CallerInfo;

.field public final imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;
    .param p3, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 382
    iput-object p2, p0, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 383
    iput-object p3, p0, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 384
    return-void
.end method
