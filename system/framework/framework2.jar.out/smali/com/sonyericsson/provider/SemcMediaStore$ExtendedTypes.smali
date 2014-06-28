.class public final Lcom/sonyericsson/provider/SemcMediaStore$ExtendedTypes;
.super Ljava/lang/Object;
.source "SemcMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/provider/SemcMediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendedTypes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/provider/SemcMediaStore$ExtendedTypes$ExtendedTypeColumns;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "content://media/external/extended_types"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/provider/SemcMediaStore$ExtendedTypes;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public static final addType(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "category"    # I

    .prologue
    .line 81
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 82
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "somcpath"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "mime_type"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "somccategory"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    sget-object v2, Lcom/sonyericsson/provider/SemcMediaStore$ExtendedTypes;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 86
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 89
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method
