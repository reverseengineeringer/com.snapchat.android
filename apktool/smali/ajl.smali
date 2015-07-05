.class public final Lajl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lajl$a;
    }
.end annotation


# instance fields
.field public final mGravity:I

.field public final mHeight:I

.field public final mShouldHideSystemUi:Z

.field public final mWidth:I


# direct methods
.method private constructor <init>(Lajl$a;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget v0, p1, Lajl$a;->mGravity:I

    iput v0, p0, Lajl;->mGravity:I

    .line 17
    iget v0, p1, Lajl$a;->mWidth:I

    iput v0, p0, Lajl;->mWidth:I

    .line 18
    iget v0, p1, Lajl$a;->mHeight:I

    iput v0, p0, Lajl;->mHeight:I

    .line 19
    iget-boolean v0, p1, Lajl$a;->mShouldHideSystemUi:Z

    iput-boolean v0, p0, Lajl;->mShouldHideSystemUi:Z

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lajl$a;B)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lajl;-><init>(Lajl$a;)V

    return-void
.end method
