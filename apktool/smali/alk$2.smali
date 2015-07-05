.class public final Lalk$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lalc;

.field final synthetic b:Lbfl;

.field final synthetic c:Lalk$a;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lalk;


# direct methods
.method public constructor <init>(Lalk;Lalc;Lbfl;Lalk$a;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lalk$2;->e:Lalk;

    iput-object p2, p0, Lalk$2;->a:Lalc;

    iput-object p3, p0, Lalk$2;->b:Lbfl;

    iput-object p4, p0, Lalk$2;->c:Lalk$a;

    iput-object p5, p0, Lalk$2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 108
    iget-object v0, p0, Lalk$2;->e:Lalk;

    iget-object v1, p0, Lalk$2;->a:Lalc;

    iget-object v2, p0, Lalk$2;->b:Lbfl;

    invoke-virtual {v0, v1, v2}, Lalk;->a(Lalc;Lbfl;)Luc;

    move-result-object v4

    .line 109
    iget-object v0, p0, Lalk$2;->c:Lalk$a;

    iget-object v1, p0, Lalk$2;->e:Lalk;

    iget-object v2, p0, Lalk$2;->a:Lalc;

    iget-object v3, p0, Lalk$2;->b:Lbfl;

    iget-object v5, p0, Lalk$2;->d:Ljava/lang/Object;

    invoke-interface/range {v0 .. v5}, Lalk$a;->a(Lalk;Lalc;Lbfl;Luc;Ljava/lang/Object;)V

    .line 110
    return-void
.end method
