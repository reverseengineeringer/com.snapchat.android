.class public final Lbgl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbgl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgl;
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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const v0, 0x3e800

    iput v0, p0, Lbgl$c;->mLinearExpansionSize:I

    .line 41
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lbgl$c;->mLinearExpansionSize:I

    add-int/2addr v0, p1

    return v0
.end method
