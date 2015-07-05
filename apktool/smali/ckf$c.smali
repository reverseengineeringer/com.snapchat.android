.class final Lckf$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lckg;
.implements Lckh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lckf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:[Lckf$c;

.field private final g:Lckf$e;

.field private final h:Lckf$e;


# direct methods
.method constructor <init>(IIIZI[Lckf$c;Lckf$e;)V
    .locals 1

    .prologue
    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    iput p1, p0, Lckf$c;->b:I

    .line 1055
    iput p2, p0, Lckf$c;->c:I

    .line 1056
    iput p3, p0, Lckf$c;->d:I

    .line 1057
    iput-boolean p4, p0, Lckf$c;->e:Z

    .line 1058
    iput p5, p0, Lckf$c;->a:I

    .line 1059
    iput-object p6, p0, Lckf$c;->f:[Lckf$c;

    .line 1060
    iput-object p7, p0, Lckf$c;->g:Lckf$e;

    .line 1061
    const/4 v0, 0x0

    iput-object v0, p0, Lckf$c;->h:Lckf$e;

    .line 1062
    return-void
.end method

.method constructor <init>(Lckf$c;Lckf$e;)V
    .locals 2

    .prologue
    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iget v0, p1, Lckf$c;->b:I

    iput v0, p0, Lckf$c;->b:I

    .line 1066
    iget v0, p1, Lckf$c;->c:I

    iput v0, p0, Lckf$c;->c:I

    .line 1067
    iget v0, p1, Lckf$c;->d:I

    iput v0, p0, Lckf$c;->d:I

    .line 1068
    iget-boolean v0, p1, Lckf$c;->e:Z

    iput-boolean v0, p0, Lckf$c;->e:Z

    .line 1069
    iget v0, p1, Lckf$c;->a:I

    iput v0, p0, Lckf$c;->a:I

    .line 1070
    iget-object v0, p1, Lckf$c;->f:[Lckf$c;

    iput-object v0, p0, Lckf$c;->f:[Lckf$c;

    .line 1071
    iget-object v0, p1, Lckf$c;->g:Lckf$e;

    iput-object v0, p0, Lckf$c;->g:Lckf$e;

    .line 1072
    iget-object v0, p1, Lckf$c;->h:Lckf$e;

    if-eqz v0, :cond_0

    .line 1073
    new-instance v0, Lckf$b;

    iget-object v1, p1, Lckf$c;->h:Lckf$e;

    invoke-direct {v0, v1, p2}, Lckf$b;-><init>(Lckf$e;Lckf$e;)V

    move-object p2, v0

    .line 1075
    :cond_0
    iput-object p2, p0, Lckf$c;->h:Lckf$e;

    .line 1076
    return-void
.end method
