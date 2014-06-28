.class Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$WallpaperManagerInstanceHolder;
.super Ljava/lang/Object;
.source "ConversationWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WallpaperManagerInstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;-><init>(Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$1;)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$WallpaperManagerInstanceHolder;->INSTANCE:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager$WallpaperManagerInstanceHolder;->INSTANCE:Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    return-object v0
.end method
