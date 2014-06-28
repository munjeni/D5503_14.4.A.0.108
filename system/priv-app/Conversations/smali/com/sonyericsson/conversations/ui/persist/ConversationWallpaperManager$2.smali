.class Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;
.super Ljava/lang/Object;
.source "ConversationWallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->preLoad(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->val$context:Landroid/content/Context;

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$2;->val$threadId:J

    # invokes: Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->loadFromFile(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->access$300(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    goto :goto_0
.end method
