.class public abstract Lcom/android/phone/SomcIncomingCallView;
.super Landroid/widget/LinearLayout;
.source "SomcIncomingCallView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;
    }
.end annotation


# instance fields
.field protected mOnIncomingCallRspListener:Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method setOnIncomingCallRspListener(Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/phone/SomcIncomingCallView;->mOnIncomingCallRspListener:Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;

    .line 28
    return-void
.end method

.method public setSingleCallSliderMarginBottom()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public setTwoCallSliderMarginBottom()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
