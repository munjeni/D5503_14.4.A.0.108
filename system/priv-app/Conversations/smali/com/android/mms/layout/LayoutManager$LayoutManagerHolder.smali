.class Lcom/android/mms/layout/LayoutManager$LayoutManagerHolder;
.super Ljava/lang/Object;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/layout/LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutManagerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/mms/layout/LayoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/android/mms/layout/LayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/layout/LayoutManager;-><init>(Lcom/android/mms/layout/LayoutManager$1;)V

    sput-object v0, Lcom/android/mms/layout/LayoutManager$LayoutManagerHolder;->INSTANCE:Lcom/android/mms/layout/LayoutManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
