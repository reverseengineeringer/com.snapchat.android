.class public final Ladf$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladf$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:I

.field public e:I

.field public f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Ladf$c$a;->b:I

    .line 98
    iput v1, p0, Ladf$c$a;->d:I

    .line 99
    iput v1, p0, Ladf$c$a;->e:I

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ladf$c$a;->f:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ladf$c;)Ladf$c$a;
    .locals 1
    .param p1    # Ladf$c;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p1, Ladf$c;->a:Ljava/lang/String;

    iput-object v0, p0, Ladf$c$a;->a:Ljava/lang/String;

    .line 138
    iget v0, p1, Ladf$c;->b:I

    iput v0, p0, Ladf$c$a;->b:I

    .line 139
    iget-boolean v0, p1, Ladf$c;->c:Z

    iput-boolean v0, p0, Ladf$c$a;->c:Z

    .line 140
    iget v0, p1, Ladf$c;->d:I

    iput v0, p0, Ladf$c$a;->d:I

    .line 141
    iget v0, p1, Ladf$c;->e:I

    iput v0, p0, Ladf$c$a;->e:I

    .line 142
    iget-object v0, p1, Ladf$c;->f:Ljava/util/Set;

    iput-object v0, p0, Ladf$c$a;->f:Ljava/util/Set;

    .line 144
    :cond_0
    return-object p0
.end method

.method public final a()Ladf$c;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Ladf$c$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build EditionViewState with null ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    new-instance v0, Ladf$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ladf$c;-><init>(Ladf$c$a;B)V

    return-object v0
.end method
