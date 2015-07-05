.class public final Laqv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Laqv$a;->a:I

    .line 101
    iput p2, p0, Laqv$a;->b:I

    .line 102
    iput p3, p0, Laqv$a;->c:I

    .line 103
    iput p4, p0, Laqv$a;->d:I

    .line 104
    return-void
.end method
