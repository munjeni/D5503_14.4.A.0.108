.class Lcom/android/phone/SomcPhoneUtils$RedirectingNameAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SomcPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcPhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RedirectingNameAsyncQueryHandler"
.end annotation


# instance fields
.field private final mListener:Lcom/android/phone/OnRedirectingQueryCompleteListener;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/phone/OnRedirectingQueryCompleteListener;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "listener"    # Lcom/android/phone/OnRedirectingQueryCompleteListener;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 140
    iput-object p2, p0, Lcom/android/phone/SomcPhoneUtils$RedirectingNameAsyncQueryHandler;->mListener:Lcom/android/phone/OnRedirectingQueryCompleteListener;

    .line 141
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/SomcPhoneUtils$RedirectingNameAsyncQueryHandler;->mListener:Lcom/android/phone/OnRedirectingQueryCompleteListener;

    invoke-interface {v0, p3}, Lcom/android/phone/OnRedirectingQueryCompleteListener;->onRedirectingNameQueryComplete(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    if-eqz p3, :cond_0

    .line 149
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_0
    return-void

    .line 148
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_1

    .line 149
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_1
    throw v0
.end method
