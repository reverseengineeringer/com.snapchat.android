.class public final Lbox$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/net/Socket;

.field c:Lbor;

.field public d:Lbna;

.field e:Lbou;

.field f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    sget-object v0, Lbor;->a:Lbor;

    iput-object v0, p0, Lbox$a;->c:Lbor;

    .line 517
    sget-object v0, Lbna;->c:Lbna;

    iput-object v0, p0, Lbox$a;->d:Lbna;

    .line 518
    sget-object v0, Lbou;->a:Lbou;

    iput-object v0, p0, Lbox$a;->e:Lbou;

    .line 530
    iput-object p1, p0, Lbox$a;->a:Ljava/lang/String;

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbox$a;->f:Z

    .line 532
    iput-object p2, p0, Lbox$a;->b:Ljava/net/Socket;

    .line 533
    return-void
.end method
