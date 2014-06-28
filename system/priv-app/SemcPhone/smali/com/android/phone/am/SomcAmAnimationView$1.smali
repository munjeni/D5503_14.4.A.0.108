.class Lcom/android/phone/am/SomcAmAnimationView$1;
.super Ljava/lang/Object;
.source "SomcAmAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/am/SomcAmAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmAnimationView;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmAnimationView;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/am/SomcAmAnimationView$1;->this$0:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView$1;->this$0:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 71
    return-void
.end method
