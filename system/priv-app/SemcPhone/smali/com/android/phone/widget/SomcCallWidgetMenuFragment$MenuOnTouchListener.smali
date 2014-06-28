.class Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;
.super Ljava/lang/Object;
.source "SomcCallWidgetMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/widget/SomcCallWidgetMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;


# direct methods
.method private constructor <init>(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;Lcom/android/phone/widget/SomcCallWidgetMenuFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment;
    .param p2, "x1"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment$1;

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;-><init>(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    .line 424
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v2, p1

    .line 425
    check-cast v2, Landroid/view/ViewGroup;

    .line 426
    .local v2, "button":Landroid/view/ViewGroup;
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    # invokes: Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getImageFromWidgetLayout(Landroid/view/ViewGroup;)Landroid/widget/ImageView;
    invoke-static {v0, v2}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->access$200(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;Landroid/view/ViewGroup;)Landroid/widget/ImageView;

    move-result-object v3

    .line 427
    .local v3, "buttonImage":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    # invokes: Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getTextFromWidgetLayout(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->access$300(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v4

    .line 429
    .local v4, "buttonText":Landroid/widget/TextView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 430
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v12

    .line 431
    .local v12, "widgetIndex":I
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    # getter for: Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->access$400(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/widget/ISomcCallWidget;

    .line 432
    .local v1, "widget":Lcom/android/phone/widget/ISomcCallWidget;
    invoke-interface {v1}, Lcom/android/phone/widget/ISomcCallWidget;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    # invokes: Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->setButtonPressed(Lcom/android/phone/widget/ISomcCallWidget;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V
    invoke-static/range {v0 .. v5}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->access$500(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;Lcom/android/phone/widget/ISomcCallWidget;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    .line 451
    .end local v1    # "widget":Lcom/android/phone/widget/ISomcCallWidget;
    .end local v2    # "button":Landroid/view/ViewGroup;
    .end local v3    # "buttonImage":Landroid/widget/ImageView;
    .end local v4    # "buttonText":Landroid/widget/TextView;
    .end local v12    # "widgetIndex":I
    :cond_0
    :goto_0
    return v5

    .line 435
    .restart local v2    # "button":Landroid/view/ViewGroup;
    .restart local v3    # "buttonImage":Landroid/widget/ImageView;
    .restart local v4    # "buttonText":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 436
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v12

    .line 437
    .restart local v12    # "widgetIndex":I
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    # getter for: Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->access$400(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/widget/ISomcCallWidget;

    .line 438
    .restart local v1    # "widget":Lcom/android/phone/widget/ISomcCallWidget;
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    # getter for: Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;
    invoke-static {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->access$600(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/phone/widget/ISomcCallWidget;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    # getter for: Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mListener:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;
    invoke-static {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->access$600(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;->widgetSelected(Lcom/android/phone/widget/ISomcCallWidget;)V

    .line 441
    iget-object v6, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    # invokes: Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->setButtonPressed(Lcom/android/phone/widget/ISomcCallWidget;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V
    invoke-static/range {v6 .. v11}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->access$500(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;Lcom/android/phone/widget/ISomcCallWidget;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 443
    .end local v1    # "widget":Lcom/android/phone/widget/ISomcCallWidget;
    .end local v12    # "widgetIndex":I
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v6, 0x3

    if-ne v0, v6, :cond_0

    .line 444
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v12

    .line 445
    .restart local v12    # "widgetIndex":I
    iget-object v0, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    # getter for: Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->mWidgetList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->access$400(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/widget/ISomcCallWidget;

    .line 446
    .restart local v1    # "widget":Lcom/android/phone/widget/ISomcCallWidget;
    invoke-interface {v1}, Lcom/android/phone/widget/ISomcCallWidget;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 447
    iget-object v6, p0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuOnTouchListener;->this$0:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    # invokes: Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->setButtonPressed(Lcom/android/phone/widget/ISomcCallWidget;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V
    invoke-static/range {v6 .. v11}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->access$500(Lcom/android/phone/widget/SomcCallWidgetMenuFragment;Lcom/android/phone/widget/ISomcCallWidget;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    goto :goto_0
.end method
