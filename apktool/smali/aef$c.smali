.class public final Laef$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laef$c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lchc;
    .end annotation
.end field

.field public final b:I

.field public final c:Z

.field final d:I

.field final e:I

.field public final f:Ljava/util/Set;
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
.method private constructor <init>(Laef$c$a;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget-object v0, p1, Laef$c$a;->a:Ljava/lang/String;

    iput-object v0, p0, Laef$c;->a:Ljava/lang/String;

    .line 65
    iget v0, p1, Laef$c$a;->b:I

    iput v0, p0, Laef$c;->b:I

    .line 66
    iget-boolean v0, p1, Laef$c$a;->c:Z

    iput-boolean v0, p0, Laef$c;->c:Z

    .line 67
    iget v0, p1, Laef$c$a;->d:I

    iput v0, p0, Laef$c;->d:I

    .line 68
    iget v0, p1, Laef$c$a;->e:I

    iput v0, p0, Laef$c;->e:I

    .line 69
    iget-object v0, p1, Laef$c$a;->f:Ljava/util/Set;

    iput-object v0, p0, Laef$c;->f:Ljava/util/Set;

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Laef$c$a;B)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Laef$c;-><init>(Laef$c$a;)V

    return-void
.end method
