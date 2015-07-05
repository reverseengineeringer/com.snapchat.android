.class public interface abstract Lboi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lboi;

.field public static final b:Lboi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lboi$1;

    invoke-direct {v0}, Lboi$1;-><init>()V

    sput-object v0, Lboi;->a:Lboi;

    .line 44
    new-instance v0, Lboi$2;

    invoke-direct {v0}, Lboi$2;-><init>()V

    sput-object v0, Lboi;->b:Lboi;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/squareup/otto/Bus;)V
.end method
