.class Lcom/sonymobile/china/photoeditor/TestActivity$2;
.super Ljava/lang/Thread;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/TestActivity;->startApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/TestActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/TestActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/TestActivity$2;->this$0:Lcom/sonymobile/china/photoeditor/TestActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sonymobile.china.photoeditor"

    const-string v2, "com.sonymobile.china.photoeditor.filtershow.FilterShowActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "content://media/external/images/media/666"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/TestActivity$2;->this$0:Lcom/sonymobile/china/photoeditor/TestActivity;

    invoke-virtual {v1, v0}, Lcom/sonymobile/china/photoeditor/TestActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/TestActivity$2;->this$0:Lcom/sonymobile/china/photoeditor/TestActivity;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/TestActivity;->finish()V

    .line 67
    return-void
.end method
