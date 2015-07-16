.class public final Lakh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakh$a;
    }
.end annotation


# instance fields
.field public final mGravity:I

.field public final mHeight:I

.field public final mShouldHideSystemUi:Z

.field public final mWidth:I


# direct methods
.method private constructor <init>(Lakh$a;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget v0, p1, Lakh$a;->mGravity:I

    iput v0, p0, Lakh;->mGravity:I

    .line 17
    iget v0, p1, Lakh$a;->mWidth:I

    iput v0, p0, Lakh;->mWidth:I

    .line 18
    iget v0, p1, Lakh$a;->mHeight:I

    iput v0, p0, Lakh;->mHeight:I

    .line 19
    iget-boolean v0, p1, Lakh$a;->mShouldHideSystemUi:Z

    iput-boolean v0, p0, Lakh;->mShouldHideSystemUi:Z

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lakh$a;B)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lakh;-><init>(Lakh$a;)V

    return-void
.end method
