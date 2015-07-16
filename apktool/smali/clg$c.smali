.class final Lclg$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lclh;
.implements Lcli;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclg;
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

.field private final f:[Lclg$c;

.field private final g:Lclg$e;

.field private final h:Lclg$e;


# direct methods
.method constructor <init>(IIIZI[Lclg$c;Lclg$e;)V
    .locals 1

    .prologue
    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    iput p1, p0, Lclg$c;->b:I

    .line 1055
    iput p2, p0, Lclg$c;->c:I

    .line 1056
    iput p3, p0, Lclg$c;->d:I

    .line 1057
    iput-boolean p4, p0, Lclg$c;->e:Z

    .line 1058
    iput p5, p0, Lclg$c;->a:I

    .line 1059
    iput-object p6, p0, Lclg$c;->f:[Lclg$c;

    .line 1060
    iput-object p7, p0, Lclg$c;->g:Lclg$e;

    .line 1061
    const/4 v0, 0x0

    iput-object v0, p0, Lclg$c;->h:Lclg$e;

    .line 1062
    return-void
.end method

.method constructor <init>(Lclg$c;Lclg$e;)V
    .locals 2

    .prologue
    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iget v0, p1, Lclg$c;->b:I

    iput v0, p0, Lclg$c;->b:I

    .line 1066
    iget v0, p1, Lclg$c;->c:I

    iput v0, p0, Lclg$c;->c:I

    .line 1067
    iget v0, p1, Lclg$c;->d:I

    iput v0, p0, Lclg$c;->d:I

    .line 1068
    iget-boolean v0, p1, Lclg$c;->e:Z

    iput-boolean v0, p0, Lclg$c;->e:Z

    .line 1069
    iget v0, p1, Lclg$c;->a:I

    iput v0, p0, Lclg$c;->a:I

    .line 1070
    iget-object v0, p1, Lclg$c;->f:[Lclg$c;

    iput-object v0, p0, Lclg$c;->f:[Lclg$c;

    .line 1071
    iget-object v0, p1, Lclg$c;->g:Lclg$e;

    iput-object v0, p0, Lclg$c;->g:Lclg$e;

    .line 1072
    iget-object v0, p1, Lclg$c;->h:Lclg$e;

    if-eqz v0, :cond_0

    .line 1073
    new-instance v0, Lclg$b;

    iget-object v1, p1, Lclg$c;->h:Lclg$e;

    invoke-direct {v0, v1, p2}, Lclg$b;-><init>(Lclg$e;Lclg$e;)V

    move-object p2, v0

    .line 1075
    :cond_0
    iput-object p2, p0, Lclg$c;->h:Lclg$e;

    .line 1076
    return-void
.end method
