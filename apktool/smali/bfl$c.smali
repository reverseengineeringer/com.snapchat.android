.class public final Lbfl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbfl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbfl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final mLinearExpansionSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const v0, 0x3e800

    iput v0, p0, Lbfl$c;->mLinearExpansionSize:I

    .line 42
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lbfl$c;->mLinearExpansionSize:I

    add-int/2addr v0, p1

    return v0
.end method
