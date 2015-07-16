.class public final Lvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lve;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 2

    .prologue
    .line 9
    if-gtz p1, :cond_0

    .line 10
    const-wide/16 v0, 0x0

    .line 12
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x1

    add-int/lit8 v1, p1, -0x1

    shl-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method
