.class public final Lakh$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public mGravity:I

.field public mHeight:I

.field public mShouldHideSystemUi:Z

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v1, p0, Lakh$a;->mGravity:I

    .line 59
    iput v0, p0, Lakh$a;->mWidth:I

    .line 60
    iput v0, p0, Lakh$a;->mHeight:I

    .line 61
    iput-boolean v1, p0, Lakh$a;->mShouldHideSystemUi:Z

    return-void
.end method


# virtual methods
.method public final a()Lakh;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lakh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lakh;-><init>(Lakh$a;B)V

    return-object v0
.end method
