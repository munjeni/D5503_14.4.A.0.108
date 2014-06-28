.class Lcom/android/phone/ContactsAsyncHelper$1;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ContactsAsyncHelper;


# direct methods
.method constructor <init>(Lcom/android/phone/ContactsAsyncHelper;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/phone/ContactsAsyncHelper$1;->this$0:Lcom/android/phone/ContactsAsyncHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;

    .line 86
    .local v6, "args":Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v3, v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->photoIcon:Landroid/graphics/Bitmap;

    iget-object v4, v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v5, v6, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->resultIcon:Landroid/graphics/Bitmap;

    invoke-interface/range {v0 .. v5}, Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;->onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
