.class public interface abstract Lcom/sonymobile/superstamina/provider/IUriHandler;
.super Ljava/lang/Object;
.source "IUriHandler.java"


# virtual methods
.method public abstract beginBatch()V
.end method

.method public abstract delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract endBatch()V
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public abstract query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
