.class final Laiz$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lajr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laiz;


# direct methods
.method private constructor <init>(Laiz;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Laiz$a;->a:Laiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laiz;B)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Laiz$a;-><init>(Laiz;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 52
    check-cast p1, Lajr;

    check-cast p2, Lajr;

    iget v0, p2, Lajr;->mPriority:I

    iget v1, p1, Lajr;->mPriority:I

    sub-int/2addr v0, v1

    return v0
.end method
