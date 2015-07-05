.class public Lch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lch;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iget-object v0, p1, Lch;->a:Ljava/lang/String;

    iput-object v0, p0, Lch;->a:Ljava/lang/String;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lch;B)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lch;-><init>(Lch;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lch;->a:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lch;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 218
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v0, Lch$1;

    invoke-direct {v0, p0, p0, p1}, Lch$1;-><init>(Lch;Lch;Ljava/lang/String;)V

    return-object v0
.end method

.method a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 433
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
