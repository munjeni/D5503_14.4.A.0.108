.class Lcom/android/phone/am/SomcAmRecordGreetingActivity$2$2;
.super Ljava/lang/Object;
.source "SomcAmRecordGreetingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;->onResourceOccupied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2$2;->this$1:Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2$2;->this$1:Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;

    iget-object v0, v0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0176

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 372
    return-void
.end method
