.class public final Ladf$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ladf$c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lcgb;
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
.method private constructor <init>(Ladf$c$a;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget-object v0, p1, Ladf$c$a;->a:Ljava/lang/String;

    iput-object v0, p0, Ladf$c;->a:Ljava/lang/String;

    .line 65
    iget v0, p1, Ladf$c$a;->b:I

    iput v0, p0, Ladf$c;->b:I

    .line 66
    iget-boolean v0, p1, Ladf$c$a;->c:Z

    iput-boolean v0, p0, Ladf$c;->c:Z

    .line 67
    iget v0, p1, Ladf$c$a;->d:I

    iput v0, p0, Ladf$c;->d:I

    .line 68
    iget v0, p1, Ladf$c$a;->e:I

    iput v0, p0, Ladf$c;->e:I

    .line 69
    iget-object v0, p1, Ladf$c$a;->f:Ljava/util/Set;

    iput-object v0, p0, Ladf$c;->f:Ljava/util/Set;

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Ladf$c$a;B)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ladf$c;-><init>(Ladf$c$a;)V

    return-void
.end method
