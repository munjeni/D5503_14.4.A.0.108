.class Lcom/android/phone/SomcInCallScreen$4;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallScreen;->showOptionsMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$4;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1277
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1288
    :goto_0
    return v0

    .line 1279
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$4;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/SomcInCallScreen;->access$1700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v1}, Lcom/android/phone/SomcCallRecorder;->start()V

    goto :goto_0

    .line 1282
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen$4;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v2}, Lcom/android/phone/SomcInCallScreen;->access$1700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v2}, Lcom/android/phone/SomcCallRecorder;->stop()V

    .line 1283
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen$4;->this$0:Lcom/android/phone/SomcInCallScreen;

    const v3, 0x7f0b0126

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1277
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
