.class Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;
.super Ljava/lang/Object;
.source "CallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallView$ConferenceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViews"
.end annotation


# instance fields
.field additionalCallInfoText:Landroid/widget/TextView;

.field callerInfoPanel:Landroid/widget/RelativeLayout;

.field contactNumberIconView:Landroid/widget/ImageView;

.field disconnectButton:Landroid/widget/ImageButton;

.field infoText:Landroid/widget/TextView;

.field nameText:Landroid/widget/TextView;

.field numberText:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/phone/CallView$ConferenceListAdapter;


# direct methods
.method constructor <init>(Lcom/android/phone/CallView$ConferenceListAdapter;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Lcom/android/phone/CallView$ConferenceListAdapter$ItemViews;->this$1:Lcom/android/phone/CallView$ConferenceListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
