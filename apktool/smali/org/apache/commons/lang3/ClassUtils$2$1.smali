.class Lorg/apache/commons/lang3/ClassUtils$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/ClassUtils$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field interfaces:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/lang3/ClassUtils$2;

.field final synthetic val$seenInterfaces:Ljava/util/Set;

.field final synthetic val$wrapped:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/ClassUtils$2;Ljava/util/Iterator;Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 1200
    iput-object p1, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->this$0:Lorg/apache/commons/lang3/ClassUtils$2;

    iput-object p2, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$wrapped:Ljava/util/Iterator;

    iput-object p3, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$seenInterfaces:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1201
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->interfaces:Ljava/util/Iterator;

    return-void
.end method

.method private walkInterfaces(Ljava/util/Set;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1223
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 1224
    iget-object v4, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$seenInterfaces:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1225
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1227
    :cond_0
    invoke-direct {p0, p1, v3}, Lorg/apache/commons/lang3/ClassUtils$2$1;->walkInterfaces(Ljava/util/Set;Ljava/lang/Class;)V

    .line 1223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1229
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->interfaces:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$wrapped:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1210
    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->interfaces:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->interfaces:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1212
    iget-object v1, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$seenInterfaces:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1219
    :goto_0
    return-object v0

    .line 1215
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->val$wrapped:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1216
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1217
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/lang3/ClassUtils$2$1;->walkInterfaces(Ljava/util/Set;Ljava/lang/Class;)V

    .line 1218
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang3/ClassUtils$2$1;->interfaces:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1200
    invoke-virtual {p0}, Lorg/apache/commons/lang3/ClassUtils$2$1;->next()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
