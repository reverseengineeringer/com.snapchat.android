.class public final Lblj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput v0, p0, Lblj$a;->c:I

    .line 276
    iput v0, p0, Lblj$a;->d:I

    .line 277
    iput v0, p0, Lblj$a;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lblj$a;
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lblj$a;->a:Z

    .line 284
    return-object p0
.end method

.method public final b()Lblj$a;
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lblj$a;->b:Z

    .line 290
    return-object p0
.end method

.method public final c()Lblj;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Lblj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lblj;-><init>(Lblj$a;B)V

    return-object v0
.end method
