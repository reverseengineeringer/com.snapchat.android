.class public final Lasp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lasu;II)I
    .locals 2

    .prologue
    .line 54
    invoke-interface {p0, p1}, Lasu;->b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->BACKGROUNDFILTER:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v0, v1, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p2

    goto :goto_0
.end method


# virtual methods
.method public final a(Lasm;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p1}, Lasm;->c()Landroid/graphics/Paint;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lasp;->a:Landroid/graphics/Paint;

    .line 95
    :cond_0
    return-object v0
.end method
