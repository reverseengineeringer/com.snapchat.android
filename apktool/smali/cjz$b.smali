.class final Lcjz$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Lcgk;

.field final b:Ljava/lang/Integer;

.field final c:[Lcjz$a;

.field final d:I

.field final synthetic e:Lcjz;


# direct methods
.method constructor <init>(Lcjz;)V
    .locals 1

    .prologue
    .line 435
    iput-object p1, p0, Lcjz$b;->e:Lcjz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iget-object v0, p1, Lcjz;->b:Lcgk;

    iput-object v0, p0, Lcjz$b;->a:Lcgk;

    .line 437
    iget-object v0, p1, Lcjz;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcjz$b;->b:Ljava/lang/Integer;

    .line 438
    iget-object v0, p1, Lcjz;->f:[Lcjz$a;

    iput-object v0, p0, Lcjz$b;->c:[Lcjz$a;

    .line 439
    iget v0, p1, Lcjz;->g:I

    iput v0, p0, Lcjz$b;->d:I

    .line 440
    return-void
.end method
