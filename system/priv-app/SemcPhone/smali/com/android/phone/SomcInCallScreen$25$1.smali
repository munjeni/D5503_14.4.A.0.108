.class Lcom/android/phone/SomcInCallScreen$25$1;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallScreen$25;->onWidgetUpdate(Landroid/widget/RemoteViews;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/SomcInCallScreen$25;

.field final synthetic val$remoteViews:Landroid/widget/RemoteViews;

.field final synthetic val$widgetType:I


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallScreen$25;Landroid/widget/RemoteViews;I)V
    .locals 0

    .prologue
    .line 4820
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$25$1;->this$1:Lcom/android/phone/SomcInCallScreen$25;

    iput-object p2, p0, Lcom/android/phone/SomcInCallScreen$25$1;->val$remoteViews:Landroid/widget/RemoteViews;

    iput p3, p0, Lcom/android/phone/SomcInCallScreen$25$1;->val$widgetType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4822
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$25$1;->this$1:Lcom/android/phone/SomcInCallScreen$25;

    iget-object v0, v0, Lcom/android/phone/SomcInCallScreen$25;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$25$1;->val$remoteViews:Landroid/widget/RemoteViews;

    iget v2, p0, Lcom/android/phone/SomcInCallScreen$25$1;->val$widgetType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallView;->showWidget(Landroid/widget/RemoteViews;I)V

    .line 4823
    return-void
.end method
