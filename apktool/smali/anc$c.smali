.class public final Lanc$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbkq;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lanc;


# direct methods
.method public constructor <init>(Lanc;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lbkq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Lanc$c;->f:Lanc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-boolean p2, p0, Lanc$c;->a:Z

    .line 150
    iput-object p3, p0, Lanc$c;->b:Ljava/lang/String;

    .line 151
    iput-object p4, p0, Lanc$c;->c:Ljava/lang/String;

    .line 152
    iput-object p5, p0, Lanc$c;->d:Ljava/lang/String;

    .line 153
    iput-object p6, p0, Lanc$c;->e:Ljava/util/List;

    .line 154
    return-void
.end method
