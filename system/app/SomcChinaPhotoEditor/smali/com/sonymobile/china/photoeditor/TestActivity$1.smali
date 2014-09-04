.class Lcom/sonymobile/china/photoeditor/TestActivity$1;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/TestActivity;->createButton(Ljava/lang/String;)Landroid/view/View;
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
    .line 45
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/TestActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/TestActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/TestActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/TestActivity;

    # invokes: Lcom/sonymobile/china/photoeditor/TestActivity;->startApp()V
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/TestActivity;->access$000(Lcom/sonymobile/china/photoeditor/TestActivity;)V

    .line 49
    return-void
.end method
