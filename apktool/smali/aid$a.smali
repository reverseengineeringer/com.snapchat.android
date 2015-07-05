.class final Laid$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laid;
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
        "Laiv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laid;


# direct methods
.method private constructor <init>(Laid;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Laid$a;->a:Laid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laid;B)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Laid$a;-><init>(Laid;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 52
    check-cast p1, Laiv;

    check-cast p2, Laiv;

    iget v0, p2, Laiv;->mPriority:I

    iget v1, p1, Laiv;->mPriority:I

    sub-int/2addr v0, v1

    return v0
.end method
