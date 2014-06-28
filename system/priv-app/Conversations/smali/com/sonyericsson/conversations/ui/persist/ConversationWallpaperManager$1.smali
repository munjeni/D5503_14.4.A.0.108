.class Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;
.super Ljava/lang/Object;
.source "ConversationWallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->storeWallpaper(Landroid/content/Context;Landroid/net/Uri;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$croppedBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Landroid/graphics/Bitmap;J)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$croppedBitmap:Landroid/graphics/Bitmap;

    iput-wide p4, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$threadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$croppedBitmap:Landroid/graphics/Bitmap;

    iget-wide v5, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$threadId:J

    # invokes: Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->storeInFile(Landroid/content/Context;Landroid/graphics/Bitmap;J)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->access$200(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;Landroid/content/Context;Landroid/graphics/Bitmap;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ConversationWallpaperManager"

    const-string v3, "Failed to store file in data directory, removing wallpaper."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->this$0:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$context:Landroid/content/Context;

    iget-wide v4, p0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;->val$threadId:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->deleteWallpaper(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 161
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e2":Ljava/io/IOException;
    const-string v2, "ConversationWallpaperManager"

    const-string v3, "Failed to remove wallpaper."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
