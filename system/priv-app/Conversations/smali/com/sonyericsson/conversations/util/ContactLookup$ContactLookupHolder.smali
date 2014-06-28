.class Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupHolder;
.super Ljava/lang/Object;
.source "ContactLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/ContactLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactLookupHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sonyericsson/conversations/util/ContactLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/sonyericsson/conversations/util/ContactLookup;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/util/ContactLookup;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupHolder;->INSTANCE:Lcom/sonyericsson/conversations/util/ContactLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
