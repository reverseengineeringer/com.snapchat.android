.class public Lcom/flurry/sdk/ei;
.super Lcom/flurry/sdk/ek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ei$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestObjectType:",
        "Ljava/lang/Object;",
        "ResponseObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/ek;"
    }
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/ei$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ei$a",
            "<TRequestObjectType;TResponseObjectType;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestObjectType;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseObjectType;"
        }
    .end annotation
.end field

.field private d:Lcom/flurry/sdk/eu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/eu",
            "<TRequestObjectType;>;"
        }
    .end annotation
.end field

.field private e:Lcom/flurry/sdk/eu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/eu",
            "<TResponseObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/flurry/sdk/ek;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ei;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/ei;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ei;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/flurry/sdk/ei;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/ei;->d:Lcom/flurry/sdk/eu;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/ei;->e:Lcom/flurry/sdk/eu;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/ei;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/flurry/sdk/ei;->n()V

    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/flurry/sdk/ei$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ei$1;-><init>(Lcom/flurry/sdk/ei;)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ek$c;)V

    .line 91
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/flurry/sdk/ei;->a:Lcom/flurry/sdk/ei$a;

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/ei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/ei;->a:Lcom/flurry/sdk/ei$a;

    iget-object v1, p0, Lcom/flurry/sdk/ei;->c:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/flurry/sdk/ei$a;->a(Lcom/flurry/sdk/ei;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/flurry/sdk/ei;->m()V

    .line 61
    invoke-super {p0}, Lcom/flurry/sdk/ek;->a()V

    .line 62
    return-void
.end method

.method public a(Lcom/flurry/sdk/ei$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ei$a",
            "<TRequestObjectType;TResponseObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/flurry/sdk/ei;->a:Lcom/flurry/sdk/ei$a;

    .line 49
    return-void
.end method

.method public a(Lcom/flurry/sdk/eu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/eu",
            "<TRequestObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/flurry/sdk/ei;->d:Lcom/flurry/sdk/eu;

    .line 41
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestObjectType;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lcom/flurry/sdk/ei;->b:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public b(Lcom/flurry/sdk/eu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/eu",
            "<TResponseObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/flurry/sdk/ei;->e:Lcom/flurry/sdk/eu;

    .line 45
    return-void
.end method
