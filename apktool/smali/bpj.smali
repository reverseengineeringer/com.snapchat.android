.class public interface abstract Lbpj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbpj;

.field public static final b:Lbpj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lbpj$1;

    invoke-direct {v0}, Lbpj$1;-><init>()V

    sput-object v0, Lbpj;->a:Lbpj;

    .line 44
    new-instance v0, Lbpj$2;

    invoke-direct {v0}, Lbpj$2;-><init>()V

    sput-object v0, Lbpj;->b:Lbpj;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/squareup/otto/Bus;)V
.end method
