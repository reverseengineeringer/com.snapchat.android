.class final Laah$1;
.super Laai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laah;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Laah$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laah$a;

.field final synthetic b:Laah;


# direct methods
.method constructor <init>(Laah;Ljava/util/Map;Laah$a;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Laah$1;->b:Laah;

    iput-object p3, p0, Laah$1;->a:Laah$a;

    invoke-direct {p0, p2}, Laai;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Laah$1;->a:Laah$a;

    invoke-interface {v0, p1}, Laah$a;->a(I)V

    .line 120
    return-void
.end method
