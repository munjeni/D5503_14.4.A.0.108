.class public Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;
.super Ljava/lang/Object;
.source "TelephonyExtra.java"

# interfaces
.implements Lcom/sonyericsson/provider/TelephonyExtra$SemcThreadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/provider/TelephonyExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemcThreads"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final MARK_READ_URI:Landroid/net/Uri;

.field public static final OBSOLETE_THREADS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 108
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "semc_ext"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    .line 111
    sget-object v0, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "obsolete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    .line 114
    sget-object v0, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "mark-read"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->MARK_READ_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
