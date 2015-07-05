.class public Lcom/google/android/gms/auth/AccountChangeEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/AccountChangeEventCreator;


# instance fields
.field final zzHe:I

.field final zzHf:J

.field final zzHg:Ljava/lang/String;

.field final zzHh:I

.field final zzHi:I

.field final zzHj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/AccountChangeEventCreator;

    invoke-direct {v0}, Lcom/google/android/gms/auth/AccountChangeEventCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/AccountChangeEvent;->CREATOR:Lcom/google/android/gms/auth/AccountChangeEventCreator;

    return-void
.end method

.method constructor <init>(IJLjava/lang/String;IILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHe:I

    iput-wide p2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHf:J

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHg:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHh:I

    iput p6, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHi:I

    iput-object p7, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHj:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHe:I

    iput-wide p1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHf:J

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHg:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHh:I

    iput p5, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHi:I

    iput-object p6, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHj:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/auth/AccountChangeEvent;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/auth/AccountChangeEvent;

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHe:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHe:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHf:J

    iget-wide v4, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHf:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHg:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHg:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHh:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHh:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHi:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHi:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHj:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHj:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHg:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHj:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHh:I

    return v0
.end method

.method public getEventIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHi:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHe:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHf:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHg:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHh:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHj:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "UNKNOWN"

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHh:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AccountChangeEvent {accountName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", changeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", changeData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzHi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "ADDED"

    goto :goto_0

    :pswitch_1
    const-string v0, "REMOVED"

    goto :goto_0

    :pswitch_2
    const-string v0, "RENAMED_TO"

    goto :goto_0

    :pswitch_3
    const-string v0, "RENAMED_FROM"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/AccountChangeEventCreator;->zza(Lcom/google/android/gms/auth/AccountChangeEvent;Landroid/os/Parcel;I)V

    return-void
.end method
