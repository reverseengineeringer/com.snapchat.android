.class final Lcla$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcla;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Lchl;

.field final b:Ljava/lang/Integer;

.field final c:[Lcla$a;

.field final d:I

.field final synthetic e:Lcla;


# direct methods
.method constructor <init>(Lcla;)V
    .locals 1

    .prologue
    .line 435
    iput-object p1, p0, Lcla$b;->e:Lcla;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iget-object v0, p1, Lcla;->b:Lchl;

    iput-object v0, p0, Lcla$b;->a:Lchl;

    .line 437
    iget-object v0, p1, Lcla;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcla$b;->b:Ljava/lang/Integer;

    .line 438
    iget-object v0, p1, Lcla;->f:[Lcla$a;

    iput-object v0, p0, Lcla$b;->c:[Lcla$a;

    .line 439
    iget v0, p1, Lcla;->g:I

    iput v0, p0, Lcla$b;->d:I

    .line 440
    return-void
.end method
