.class public interface abstract Lcom/sonymobile/superstamina/xssm/UserWhitelist$UserWhitelistListener;
.super Ljava/lang/Object;
.source "UserWhitelist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/UserWhitelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserWhitelistListener"
.end annotation


# virtual methods
.method public abstract onChanged(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method
